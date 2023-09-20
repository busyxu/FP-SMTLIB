(declare-fun d_ack!1296 () (_ BitVec 32))
(declare-fun a_ack!1297 () (_ BitVec 64))
(declare-fun b_ack!1294 () (_ BitVec 64))
(declare-fun c_ack!1295 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!1296 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1297) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1294) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1295) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1297)
                    ((_ to_fp 11 53) b_ack!1294))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1297)
                    ((_ to_fp 11 53) c_ack!1295))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1294)
                    ((_ to_fp 11 53) c_ack!1295))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1297) ((_ to_fp 11 53) b_ack!1294))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1294) ((_ to_fp 11 53) c_ack!1295))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1295) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1297)
                                   ((_ to_fp 11 53) b_ack!1294))
                           ((_ to_fp 11 53) c_ack!1295))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1297))
                           a!1)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1294))
                           a!1))))
  (not (fp.gt (fp.abs a!2) (fp.abs a!3))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1297)
                                   ((_ to_fp 11 53) b_ack!1294))
                           ((_ to_fp 11 53) c_ack!1295))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1294))
                           a!1)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!1295))
                           a!1))))
  (fp.gt (fp.abs a!2) (fp.abs a!3)))))

(check-sat)
(exit)
