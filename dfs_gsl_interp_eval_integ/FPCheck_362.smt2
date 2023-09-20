(declare-fun x1_ack!4403 () (_ BitVec 64))
(declare-fun x0_ack!4407 () (_ BitVec 64))
(declare-fun x2_ack!4404 () (_ BitVec 64))
(declare-fun b_ack!4406 () (_ BitVec 64))
(declare-fun a_ack!4405 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4407) ((_ to_fp 11 53) x1_ack!4403)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4403) ((_ to_fp 11 53) x2_ack!4404)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4403)
                       ((_ to_fp 11 53) x0_ack!4407))
               ((_ to_fp 11 53) x0_ack!4407))
       ((_ to_fp 11 53) x1_ack!4403)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4403)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4403)
                       ((_ to_fp 11 53) x0_ack!4407)))
       ((_ to_fp 11 53) x0_ack!4407)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4404)
                       ((_ to_fp 11 53) x1_ack!4403))
               ((_ to_fp 11 53) x1_ack!4403))
       ((_ to_fp 11 53) x2_ack!4404)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4404)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4404)
                       ((_ to_fp 11 53) x1_ack!4403)))
       ((_ to_fp 11 53) x1_ack!4403)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4403)
                    ((_ to_fp 11 53) x0_ack!4407))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4404)
                    ((_ to_fp 11 53) x1_ack!4403))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4405) ((_ to_fp 11 53) b_ack!4406))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4405) ((_ to_fp 11 53) x0_ack!4407))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4406) ((_ to_fp 11 53) x2_ack!4404))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4405) ((_ to_fp 11 53) b_ack!4406))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4405) ((_ to_fp 11 53) x0_ack!4407))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4405) ((_ to_fp 11 53) x1_ack!4403)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4403) ((_ to_fp 11 53) a_ack!4405))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4406) ((_ to_fp 11 53) x1_ack!4403))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4406) ((_ to_fp 11 53) x2_ack!4404)))
(assert (FPCHECK_FSUB_OVERFLOW x2_ack!4404 x1_ack!4403))

(check-sat)
(exit)
