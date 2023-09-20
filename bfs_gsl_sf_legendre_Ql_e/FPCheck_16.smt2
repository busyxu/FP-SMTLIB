(declare-fun b_ack!68 () (_ BitVec 64))
(declare-fun a_ack!69 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!68) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!68) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!69 #x00000000)))
(assert (= #x00000000 a_ack!69))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!68) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!68) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!68)
               ((_ to_fp 11 53) b_ack!68))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fbc71c71c71c71c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!68)
                                   ((_ to_fp 11 53) b_ack!68))
                           ((_ to_fp 11 53) #x3fb745d1745d1746)))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!68)
            ((_ to_fp 11 53) b_ack!68))
    a!1)))

(check-sat)
(exit)
