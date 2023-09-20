(declare-fun x1_ack!1230 () (_ BitVec 64))
(declare-fun x0_ack!1236 () (_ BitVec 64))
(declare-fun x2_ack!1231 () (_ BitVec 64))
(declare-fun b_ack!1235 () (_ BitVec 64))
(declare-fun a_ack!1234 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1232 () (_ BitVec 64))
(declare-fun y2_ack!1233 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1236) ((_ to_fp 11 53) x1_ack!1230)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1230) ((_ to_fp 11 53) x2_ack!1231)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1230)
                       ((_ to_fp 11 53) x0_ack!1236))
               ((_ to_fp 11 53) x0_ack!1236))
       ((_ to_fp 11 53) x1_ack!1230)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1230)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1230)
                       ((_ to_fp 11 53) x0_ack!1236)))
       ((_ to_fp 11 53) x0_ack!1236)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1231)
                       ((_ to_fp 11 53) x1_ack!1230))
               ((_ to_fp 11 53) x1_ack!1230))
       ((_ to_fp 11 53) x2_ack!1231)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1231)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1231)
                       ((_ to_fp 11 53) x1_ack!1230)))
       ((_ to_fp 11 53) x1_ack!1230)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1230)
                    ((_ to_fp 11 53) x0_ack!1236))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1231)
                    ((_ to_fp 11 53) x1_ack!1230))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1234) ((_ to_fp 11 53) b_ack!1235))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1234) ((_ to_fp 11 53) x0_ack!1236))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1235) ((_ to_fp 11 53) x2_ack!1231))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1234) ((_ to_fp 11 53) b_ack!1235))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1234) ((_ to_fp 11 53) x0_ack!1236))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1234) ((_ to_fp 11 53) x1_ack!1230)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1230) ((_ to_fp 11 53) a_ack!1234))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1235) ((_ to_fp 11 53) x1_ack!1230))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1235) ((_ to_fp 11 53) x2_ack!1231))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1231)
                    ((_ to_fp 11 53) x1_ack!1230))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1233)
          ((_ to_fp 11 53) y1_ack!1232))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1231)
          ((_ to_fp 11 53) x1_ack!1230))))

(check-sat)
(exit)
