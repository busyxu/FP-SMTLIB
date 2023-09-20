(declare-fun b_ack!1323 () (_ BitVec 32))
(declare-fun a_ack!1325 () (_ BitVec 32))
(declare-fun c_ack!1324 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!1323 #x00000000)))
(assert (not (bvslt a_ack!1325 b_ack!1323)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1324) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1324) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!1323)))
(assert (not (= #x00000001 b_ack!1323)))
(assert (not (bvslt b_ack!1323 #x00000000)))
(assert (not (bvslt a_ack!1325 b_ack!1323)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1324) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1324) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000000 b_ack!1323))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1324) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1324) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1323)))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1324))
                           ((_ to_fp 11 53) c_ack!1324))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1324))
                           ((_ to_fp 11 53) c_ack!1324)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f6428a2f98d728d)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1324))
                           ((_ to_fp 11 53) c_ack!1324)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4020000000000000
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) c_ack!1324))
          ((_ to_fp 11 53) c_ack!1324))))

(check-sat)
(exit)
