(declare-fun x1_ack!4202 () (_ BitVec 64))
(declare-fun x0_ack!4206 () (_ BitVec 64))
(declare-fun x2_ack!4203 () (_ BitVec 64))
(declare-fun b_ack!4205 () (_ BitVec 64))
(declare-fun a_ack!4204 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4206) ((_ to_fp 11 53) x1_ack!4202)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4202) ((_ to_fp 11 53) x2_ack!4203)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4202)
                       ((_ to_fp 11 53) x0_ack!4206))
               ((_ to_fp 11 53) x0_ack!4206))
       ((_ to_fp 11 53) x1_ack!4202)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4202)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4202)
                       ((_ to_fp 11 53) x0_ack!4206)))
       ((_ to_fp 11 53) x0_ack!4206)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4203)
                       ((_ to_fp 11 53) x1_ack!4202))
               ((_ to_fp 11 53) x1_ack!4202))
       ((_ to_fp 11 53) x2_ack!4203)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4203)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4203)
                       ((_ to_fp 11 53) x1_ack!4202)))
       ((_ to_fp 11 53) x1_ack!4202)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4202)
                    ((_ to_fp 11 53) x0_ack!4206))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4203)
                    ((_ to_fp 11 53) x1_ack!4202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4204) ((_ to_fp 11 53) b_ack!4205))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4204) ((_ to_fp 11 53) x0_ack!4206))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4205) ((_ to_fp 11 53) x2_ack!4203))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4204) ((_ to_fp 11 53) b_ack!4205))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4204) ((_ to_fp 11 53) x0_ack!4206))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4204) ((_ to_fp 11 53) x1_ack!4202))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4205) ((_ to_fp 11 53) x0_ack!4206))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4205) ((_ to_fp 11 53) x1_ack!4202))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4202)
                    ((_ to_fp 11 53) x0_ack!4206))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!4205 x0_ack!4206))

(check-sat)
(exit)
