(declare-fun d_ack!1240 () (_ BitVec 32))
(declare-fun a_ack!1241 () (_ BitVec 64))
(declare-fun b_ack!1238 () (_ BitVec 64))
(declare-fun c_ack!1239 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!1240 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1241) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1238) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1241)
                    ((_ to_fp 11 53) b_ack!1238))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1241)
                    ((_ to_fp 11 53) c_ack!1239))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1238)
                    ((_ to_fp 11 53) c_ack!1239))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1241) ((_ to_fp 11 53) b_ack!1238))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1238) ((_ to_fp 11 53) c_ack!1239))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1239) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1241)
                                   ((_ to_fp 11 53) b_ack!1238))
                           ((_ to_fp 11 53) c_ack!1239))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1241))
                           a!1)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1238))
                           a!1))))
  (fp.gt (fp.abs a!2) (fp.abs a!3)))))

(check-sat)
(exit)
