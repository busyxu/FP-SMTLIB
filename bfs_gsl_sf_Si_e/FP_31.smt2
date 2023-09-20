(declare-fun a_ack!337 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!337))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!337))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!337))
             ((_ to_fp 11 53) #x401c48c6001f1ea6))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!337))
             ((_ to_fp 11 53) #x4190000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!337))
       ((_ to_fp 11 53) #x7fd0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!337))
            ((_ to_fp 11 53) #x5fe0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!337))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3cc0000000000000))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!337))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!337))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3cc0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!337)))
                   (CF_cos (fp.abs ((_ to_fp 11 53) a_ack!337))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff921fb54442d18)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff921fb54442d18))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!337)))
                   (CF_cos (fp.abs ((_ to_fp 11 53) a_ack!337))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff921fb54442d18)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff921fb54442d18)
                         a!1))
         a!1)))

(check-sat)
(exit)
