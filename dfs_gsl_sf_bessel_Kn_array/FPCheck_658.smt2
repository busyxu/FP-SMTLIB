(declare-fun a_ack!2780 () (_ BitVec 32))
(declare-fun b_ack!2778 () (_ BitVec 32))
(declare-fun c_ack!2779 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!2780 #x00000000)))
(assert (not (bvslt b_ack!2778 a_ack!2780)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2779) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2778)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2779) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2779) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!2779) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2779))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2779)
                       ((_ to_fp 11 53) c_ack!2779))
               ((_ to_fp 11 53) c_ack!2779))
       ((_ to_fp 11 53) c_ack!2779)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2779))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2779)
                       ((_ to_fp 11 53) c_ack!2779))
               ((_ to_fp 11 53) c_ack!2779))
       ((_ to_fp 11 53) c_ack!2779)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2779)
                                  ((_ to_fp 11 53) c_ack!2779)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2779)
                                   ((_ to_fp 11 53) c_ack!2779))
                           ((_ to_fp 11 53) #x3d9d141fcb837472))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2779)
                           ((_ to_fp 11 53) c_ack!2779)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3d9d141fcb837472))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2779)
                                   ((_ to_fp 11 53) c_ack!2779))
                           ((_ to_fp 11 53) #x3d9d141fcb837472))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!2779)
                 ((_ to_fp 11 53) c_ack!2779)))))
(assert (FPCHECK_FADD_ACCURACY
  #x3e14c2029d5d2fb5
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!2779)
                  ((_ to_fp 11 53) c_ack!2779))
          ((_ to_fp 11 53) #x3d9d141fcb837472))))

(check-sat)
(exit)
