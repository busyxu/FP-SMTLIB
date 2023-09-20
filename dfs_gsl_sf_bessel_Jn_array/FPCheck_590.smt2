(declare-fun a_ack!2414 () (_ BitVec 32))
(declare-fun b_ack!2412 () (_ BitVec 32))
(declare-fun c_ack!2413 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!2414 #x00000000)))
(assert (not (bvslt b_ack!2412 a_ack!2414)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2413) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!2412) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2413) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!2412)))
(assert (= #x00000000 b_ack!2412))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2413))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2413))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2413))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2413))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2413))
                           (fp.abs ((_ to_fp 11 53) c_ack!2413))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!3 ((_ to_fp 11 53) #x0000000000000000))
    #x0000000000000000)))))

(check-sat)
(exit)
