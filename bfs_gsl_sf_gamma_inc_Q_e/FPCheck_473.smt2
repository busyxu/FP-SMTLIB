(declare-fun a_ack!1346 () (_ BitVec 64))
(declare-fun b_ack!1345 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1346) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1345) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1345) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1346) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1345)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1346)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1346) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1345)
                       ((_ to_fp 11 53) a_ack!1346))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1345)
                       ((_ to_fp 11 53) a_ack!1346)))
       ((_ to_fp 11 53) a_ack!1346)))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1345)
                                   ((_ to_fp 11 53) a_ack!1346))
                           ((_ to_fp 11 53) a_ack!1346))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1345)
                                   ((_ to_fp 11 53) a_ack!1346))
                           ((_ to_fp 11 53) a_ack!1346)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1345)
                                   ((_ to_fp 11 53) a_ack!1346))
                           ((_ to_fp 11 53) a_ack!1346)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4020000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1345)
                  ((_ to_fp 11 53) a_ack!1346))
          ((_ to_fp 11 53) a_ack!1346))))

(check-sat)
(exit)
