(declare-fun x1_ack!4358 () (_ BitVec 64))
(declare-fun x0_ack!4362 () (_ BitVec 64))
(declare-fun x2_ack!4359 () (_ BitVec 64))
(declare-fun b_ack!4361 () (_ BitVec 64))
(declare-fun a_ack!4360 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4362) ((_ to_fp 11 53) x1_ack!4358)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4358) ((_ to_fp 11 53) x2_ack!4359)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4358)
                       ((_ to_fp 11 53) x0_ack!4362))
               ((_ to_fp 11 53) x0_ack!4362))
       ((_ to_fp 11 53) x1_ack!4358)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4358)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4358)
                       ((_ to_fp 11 53) x0_ack!4362)))
       ((_ to_fp 11 53) x0_ack!4362)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4359)
                       ((_ to_fp 11 53) x1_ack!4358))
               ((_ to_fp 11 53) x1_ack!4358))
       ((_ to_fp 11 53) x2_ack!4359)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4359)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4359)
                       ((_ to_fp 11 53) x1_ack!4358)))
       ((_ to_fp 11 53) x1_ack!4358)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4358)
                    ((_ to_fp 11 53) x0_ack!4362))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4359)
                    ((_ to_fp 11 53) x1_ack!4358))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4360) ((_ to_fp 11 53) b_ack!4361))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4360) ((_ to_fp 11 53) x0_ack!4362))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4361) ((_ to_fp 11 53) x2_ack!4359))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4360) ((_ to_fp 11 53) b_ack!4361))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4360) ((_ to_fp 11 53) x0_ack!4362))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4360) ((_ to_fp 11 53) x1_ack!4358))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4361) ((_ to_fp 11 53) x0_ack!4362))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4361) ((_ to_fp 11 53) x1_ack!4358))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4358)
                    ((_ to_fp 11 53) x0_ack!4362))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4360)
          ((_ to_fp 11 53) x0_ack!4362))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4360)
          ((_ to_fp 11 53) x0_ack!4362))))

(check-sat)
(exit)
