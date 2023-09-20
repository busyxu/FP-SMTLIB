(declare-fun b_ack!322 () (_ BitVec 64))
(declare-fun a_ack!324 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!323 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!322) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!324 #x00000000)))
(assert (not (= #x00000000 a_ack!324)))
(assert (not (= #x00000001 a_ack!324)))
(assert (= #x00000002 a_ack!324))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!322) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!322)))
                   ((_ to_fp 11 53) c_ack!323))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!322)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!323))))))
  (FPCHECK_FMUL_OVERFLOW #x4000000000000000 (fp.abs a!2)))))

(check-sat)
(exit)
