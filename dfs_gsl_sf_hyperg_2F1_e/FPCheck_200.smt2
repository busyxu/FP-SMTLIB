(declare-fun a_ack!1349 () (_ BitVec 64))
(declare-fun b_ack!1346 () (_ BitVec 64))
(declare-fun c_ack!1347 () (_ BitVec 64))
(declare-fun d_ack!1348 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1349) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1346) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1347) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!1348)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1348) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!1348))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1347)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!1347)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1347)
                       ((_ to_fp 11 53) b_ack!1346))
               ((_ to_fp 11 53) b_ack!1346))
       ((_ to_fp 11 53) c_ack!1347)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1347)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1347)
                       ((_ to_fp 11 53) b_ack!1346)))
       ((_ to_fp 11 53) b_ack!1346)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1347)
                                  ((_ to_fp 11 53) b_ack!1346)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1347)
                       ((_ to_fp 11 53) a_ack!1349))
               ((_ to_fp 11 53) a_ack!1349))
       ((_ to_fp 11 53) c_ack!1347)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1347)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1347)
                       ((_ to_fp 11 53) a_ack!1349)))
       ((_ to_fp 11 53) a_ack!1349)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1347)
                                  ((_ to_fp 11 53) a_ack!1349)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1349) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1346) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1349))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1346))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1348) ((_ to_fp 11 53) #xbfd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1348) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1347))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1347))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1349)
          ((_ to_fp 11 53) #x0000000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1346)
          ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
