(declare-fun x1_ack!4388 () (_ BitVec 64))
(declare-fun x0_ack!4392 () (_ BitVec 64))
(declare-fun x2_ack!4389 () (_ BitVec 64))
(declare-fun b_ack!4391 () (_ BitVec 64))
(declare-fun a_ack!4390 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4392) ((_ to_fp 11 53) x1_ack!4388)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4388) ((_ to_fp 11 53) x2_ack!4389)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4388)
                       ((_ to_fp 11 53) x0_ack!4392))
               ((_ to_fp 11 53) x0_ack!4392))
       ((_ to_fp 11 53) x1_ack!4388)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4388)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4388)
                       ((_ to_fp 11 53) x0_ack!4392)))
       ((_ to_fp 11 53) x0_ack!4392)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4389)
                       ((_ to_fp 11 53) x1_ack!4388))
               ((_ to_fp 11 53) x1_ack!4388))
       ((_ to_fp 11 53) x2_ack!4389)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4389)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4389)
                       ((_ to_fp 11 53) x1_ack!4388)))
       ((_ to_fp 11 53) x1_ack!4388)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4388)
                    ((_ to_fp 11 53) x0_ack!4392))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4389)
                    ((_ to_fp 11 53) x1_ack!4388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4390) ((_ to_fp 11 53) b_ack!4391))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4390) ((_ to_fp 11 53) x0_ack!4392))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4391) ((_ to_fp 11 53) x2_ack!4389))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4390) ((_ to_fp 11 53) b_ack!4391))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4390) ((_ to_fp 11 53) x0_ack!4392))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4390) ((_ to_fp 11 53) x1_ack!4388)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4388) ((_ to_fp 11 53) a_ack!4390))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4391) ((_ to_fp 11 53) x1_ack!4388))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4391) ((_ to_fp 11 53) x2_ack!4389))))
(assert (FPCHECK_FSUB_UNDERFLOW x2_ack!4389 x1_ack!4388))

(check-sat)
(exit)
