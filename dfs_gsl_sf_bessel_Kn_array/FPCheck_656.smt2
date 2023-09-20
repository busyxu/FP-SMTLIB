(declare-fun a_ack!2774 () (_ BitVec 32))
(declare-fun b_ack!2772 () (_ BitVec 32))
(declare-fun c_ack!2773 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!2774 #x00000000)))
(assert (not (bvslt b_ack!2772 a_ack!2774)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2773) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2772)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2773) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2773) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!2773) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2773))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2773)
                       ((_ to_fp 11 53) c_ack!2773))
               ((_ to_fp 11 53) c_ack!2773))
       ((_ to_fp 11 53) c_ack!2773)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2773))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2773)
                       ((_ to_fp 11 53) c_ack!2773))
               ((_ to_fp 11 53) c_ack!2773))
       ((_ to_fp 11 53) c_ack!2773)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2773)
                                  ((_ to_fp 11 53) c_ack!2773)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2773)
                                   ((_ to_fp 11 53) c_ack!2773))
                           ((_ to_fp 11 53) #x3d9d141fcb837472))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2773)
                           ((_ to_fp 11 53) c_ack!2773)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3d9d141fcb837472))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2773)
                                   ((_ to_fp 11 53) c_ack!2773))
                           ((_ to_fp 11 53) #x3d9d141fcb837472))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!2773)
                 ((_ to_fp 11 53) c_ack!2773)))))
(assert (FPCHECK_FADD_OVERFLOW
  #x3e14c2029d5d2fb5
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!2773)
                  ((_ to_fp 11 53) c_ack!2773))
          ((_ to_fp 11 53) #x3d9d141fcb837472))))

(check-sat)
(exit)
