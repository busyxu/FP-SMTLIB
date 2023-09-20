(declare-fun b_ack!1498 () (_ BitVec 64))
(declare-fun a_ack!1499 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1498) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1498) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1499 #x00000000)))
(assert (not (= #x00000000 a_ack!1499)))
(assert (not (= #x00000001 a_ack!1499)))
(assert (not (bvslt #x000186a0 a_ack!1499)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1498) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1498) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1498) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1498)
               ((_ to_fp 11 53) b_ack!1498))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1498) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1498) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1498)
               ((_ to_fp 11 53) b_ack!1498))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fbc71c71c71c71c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1498)
                                   ((_ to_fp 11 53) b_ack!1498))
                           ((_ to_fp 11 53) #x3fb745d1745d1746)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!1498)
            ((_ to_fp 11 53) b_ack!1498))
    a!1)))

(check-sat)
(exit)
