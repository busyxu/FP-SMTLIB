(declare-fun limit_ack!1268 () (_ BitVec 64))
(declare-fun a_ack!1269 () (_ BitVec 64))
(declare-fun b_ack!1264 () (_ BitVec 64))
(declare-fun epsabs_ack!1266 () (_ BitVec 64))
(declare-fun epsrel_ack!1267 () (_ BitVec 64))
(declare-fun c_ack!1265 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!1268)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1264) ((_ to_fp 11 53) a_ack!1269))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1266) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1267)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1267)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1265) ((_ to_fp 11 53) a_ack!1269))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1265) ((_ to_fp 11 53) b_ack!1264))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1265))
                   ((_ to_fp 11 53) b_ack!1264))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!1269))
                 ((_ to_fp 11 53) a_ack!1269))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1265))
                   ((_ to_fp 11 53) b_ack!1264))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!1269)))
         ((_ to_fp 11 53) a_ack!1269))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1265))
                           ((_ to_fp 11 53) b_ack!1264))
                   ((_ to_fp 11 53) a_ack!1269))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!1264)
                               ((_ to_fp 11 53) a_ack!1269))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1265))
                           ((_ to_fp 11 53) b_ack!1264))
                   ((_ to_fp 11 53) a_ack!1269))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1264)
                                   ((_ to_fp 11 53) a_ack!1269))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!1269))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
