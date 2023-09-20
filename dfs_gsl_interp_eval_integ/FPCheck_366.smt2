(declare-fun x1_ack!4442 () (_ BitVec 64))
(declare-fun x0_ack!4448 () (_ BitVec 64))
(declare-fun x2_ack!4443 () (_ BitVec 64))
(declare-fun b_ack!4447 () (_ BitVec 64))
(declare-fun a_ack!4446 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!4444 () (_ BitVec 64))
(declare-fun y2_ack!4445 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4448) ((_ to_fp 11 53) x1_ack!4442)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4442) ((_ to_fp 11 53) x2_ack!4443)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4442)
                       ((_ to_fp 11 53) x0_ack!4448))
               ((_ to_fp 11 53) x0_ack!4448))
       ((_ to_fp 11 53) x1_ack!4442)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4442)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4442)
                       ((_ to_fp 11 53) x0_ack!4448)))
       ((_ to_fp 11 53) x0_ack!4448)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4443)
                       ((_ to_fp 11 53) x1_ack!4442))
               ((_ to_fp 11 53) x1_ack!4442))
       ((_ to_fp 11 53) x2_ack!4443)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4443)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4443)
                       ((_ to_fp 11 53) x1_ack!4442)))
       ((_ to_fp 11 53) x1_ack!4442)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4442)
                    ((_ to_fp 11 53) x0_ack!4448))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4443)
                    ((_ to_fp 11 53) x1_ack!4442))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4446) ((_ to_fp 11 53) b_ack!4447))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4446) ((_ to_fp 11 53) x0_ack!4448))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4447) ((_ to_fp 11 53) x2_ack!4443))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4446) ((_ to_fp 11 53) b_ack!4447))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4446) ((_ to_fp 11 53) x0_ack!4448))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4446) ((_ to_fp 11 53) x1_ack!4442)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4442) ((_ to_fp 11 53) a_ack!4446))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4447) ((_ to_fp 11 53) x1_ack!4442))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4447) ((_ to_fp 11 53) x2_ack!4443)))
(assert (FPCHECK_FSUB_UNDERFLOW y2_ack!4445 y1_ack!4444))

(check-sat)
(exit)
