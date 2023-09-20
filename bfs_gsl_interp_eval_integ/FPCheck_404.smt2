(declare-fun x1_ack!5078 () (_ BitVec 64))
(declare-fun x0_ack!5084 () (_ BitVec 64))
(declare-fun x2_ack!5079 () (_ BitVec 64))
(declare-fun b_ack!5083 () (_ BitVec 64))
(declare-fun a_ack!5082 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5080 () (_ BitVec 64))
(declare-fun y1_ack!5081 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5084) ((_ to_fp 11 53) x1_ack!5078)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5078) ((_ to_fp 11 53) x2_ack!5079)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5078)
                       ((_ to_fp 11 53) x0_ack!5084))
               ((_ to_fp 11 53) x0_ack!5084))
       ((_ to_fp 11 53) x1_ack!5078)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5078)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5078)
                       ((_ to_fp 11 53) x0_ack!5084)))
       ((_ to_fp 11 53) x0_ack!5084)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5079)
                       ((_ to_fp 11 53) x1_ack!5078))
               ((_ to_fp 11 53) x1_ack!5078))
       ((_ to_fp 11 53) x2_ack!5079)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5079)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5079)
                       ((_ to_fp 11 53) x1_ack!5078)))
       ((_ to_fp 11 53) x1_ack!5078)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5078)
                    ((_ to_fp 11 53) x0_ack!5084))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5079)
                    ((_ to_fp 11 53) x1_ack!5078))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5082) ((_ to_fp 11 53) b_ack!5083))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5082) ((_ to_fp 11 53) x0_ack!5084))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5083) ((_ to_fp 11 53) x2_ack!5079))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5082) ((_ to_fp 11 53) b_ack!5083))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5082) ((_ to_fp 11 53) x0_ack!5084))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5082) ((_ to_fp 11 53) x1_ack!5078))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5083) ((_ to_fp 11 53) x0_ack!5084))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5083) ((_ to_fp 11 53) x1_ack!5078)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5078) ((_ to_fp 11 53) b_ack!5083))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5078)
                    ((_ to_fp 11 53) x0_ack!5084))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!5081)
          ((_ to_fp 11 53) y0_ack!5080))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5078)
          ((_ to_fp 11 53) x0_ack!5084))))

(check-sat)
(exit)
