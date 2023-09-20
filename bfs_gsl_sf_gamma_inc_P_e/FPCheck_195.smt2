(declare-fun a_ack!560 () (_ BitVec 64))
(declare-fun b_ack!559 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!560) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!559) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!559) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!559) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!559)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!560)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!560) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!560) ((_ to_fp 11 53) b_ack!559)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!560)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    ((_ to_fp 11 53) b_ack!559)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!560) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!559)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!560)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!559)
                       ((_ to_fp 11 53) a_ack!560))
               ((_ to_fp 11 53) a_ack!560))
       ((_ to_fp 11 53) b_ack!559)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!559)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!559)
                       ((_ to_fp 11 53) a_ack!560)))
       ((_ to_fp 11 53) a_ack!560)))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!559)
                                   ((_ to_fp 11 53) a_ack!560))
                           ((_ to_fp 11 53) a_ack!560))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!559)
                                   ((_ to_fp 11 53) a_ack!560))
                           ((_ to_fp 11 53) a_ack!560)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!559)
                                   ((_ to_fp 11 53) a_ack!560))
                           ((_ to_fp 11 53) a_ack!560)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (FPCHECK_FADD_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!559)
                  ((_ to_fp 11 53) a_ack!560))
          ((_ to_fp 11 53) a_ack!560))))

(check-sat)
(exit)
