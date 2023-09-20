(declare-fun a_ack!255 () (_ BitVec 32))
(declare-fun b_ack!254 () (_ BitVec 64))
(assert (not (bvslt a_ack!255 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!254) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!255)))
(assert (not (= #x00000001 a_ack!255)))
(assert (= #x00000002 a_ack!255))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!254) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!254) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!254) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!254)
                                  ((_ to_fp 11 53) b_ack!254)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!254)
                                   ((_ to_fp 11 53) b_ack!254))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!254)
                           ((_ to_fp 11 53) b_ack!254)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!254)
                                   ((_ to_fp 11 53) b_ack!254))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!254)
                 ((_ to_fp 11 53) b_ack!254)))))

(check-sat)
(exit)
