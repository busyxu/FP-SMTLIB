(declare-fun a_ack!45 () (_ BitVec 32))
(declare-fun b_ack!44 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!45 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!44) ((_ to_fp 11 53) #x3f30000000000000)))
(assert (bvsle #x00000000 a_ack!45))
(assert (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3fe0000000000000)
                        ((_ to_fp 11 53) b_ack!44)))
        ((_ to_fp 11 53) #x0010000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) b_ack!44)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!44))
                           ((_ to_fp 11 53) b_ack!44))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!44)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!44))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!44))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!44))
                           ((_ to_fp 11 53) b_ack!44))
                   ((_ to_fp 11 53) b_ack!44))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 ((_ to_fp 11 53) b_ack!44)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) b_ack!44))
          ((_ to_fp 11 53) b_ack!44))
  #x4008000000000000))

(check-sat)
(exit)
