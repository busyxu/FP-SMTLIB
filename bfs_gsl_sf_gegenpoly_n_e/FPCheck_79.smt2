(declare-fun b_ack!467 () (_ BitVec 64))
(declare-fun a_ack!469 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!468 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!469 #x00000000)))
(assert (not (= #x00000000 a_ack!469)))
(assert (not (= #x00000001 a_ack!469)))
(assert (not (= #x00000002 a_ack!469)))
(assert (= #x00000003 a_ack!469))
(assert (fp.eq ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) c_ack!468))
                           ((_ to_fp 11 53) c_ack!468)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!468)
                                   a!1)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3cb0000000000000
    (fp.add roundNearestTiesToEven a!2 (fp.abs ((_ to_fp 11 53) c_ack!468)))))))

(check-sat)
(exit)
