(declare-fun a_ack!4879 () (_ BitVec 32))
(declare-fun b_ack!4877 () (_ BitVec 32))
(declare-fun c_ack!4878 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!4879 #x00000000)))
(assert (not (bvslt b_ack!4877 a_ack!4879)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4878) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!4877))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4878) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4878) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4878))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4878)
                       ((_ to_fp 11 53) c_ack!4878))
               ((_ to_fp 11 53) c_ack!4878))
       ((_ to_fp 11 53) c_ack!4878)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4878))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4878)
                       ((_ to_fp 11 53) c_ack!4878))
               ((_ to_fp 11 53) c_ack!4878))
       ((_ to_fp 11 53) c_ack!4878)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4878)
                           ((_ to_fp 11 53) c_ack!4878))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4878)
                           ((_ to_fp 11 53) c_ack!4878))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fd0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!4878)
          ((_ to_fp 11 53) c_ack!4878))))

(check-sat)
(exit)
