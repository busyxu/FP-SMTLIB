(declare-fun x_ack!7680 () (_ BitVec 64))
(declare-fun nu1_ack!7678 () (_ BitVec 64))
(declare-fun nu2_ack!7679 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!7680) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!7680) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!7680) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!7680) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!7678) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!7679) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!7678) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!7679) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!7678) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu1_ack!7678) (CF_floor nu1_ack!7678))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!7679) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu2_ack!7679) (CF_floor nu2_ack!7679))
                  #x00000001
                  #x00000000))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
