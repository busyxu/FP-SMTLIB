(declare-fun x1_ack!4235 () (_ BitVec 64))
(declare-fun x0_ack!4239 () (_ BitVec 64))
(declare-fun x2_ack!4236 () (_ BitVec 64))
(declare-fun b_ack!4238 () (_ BitVec 64))
(declare-fun a_ack!4237 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4239) ((_ to_fp 11 53) x1_ack!4235)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4235) ((_ to_fp 11 53) x2_ack!4236)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4235)
                       ((_ to_fp 11 53) x0_ack!4239))
               ((_ to_fp 11 53) x0_ack!4239))
       ((_ to_fp 11 53) x1_ack!4235)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4235)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4235)
                       ((_ to_fp 11 53) x0_ack!4239)))
       ((_ to_fp 11 53) x0_ack!4239)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4236)
                       ((_ to_fp 11 53) x1_ack!4235))
               ((_ to_fp 11 53) x1_ack!4235))
       ((_ to_fp 11 53) x2_ack!4236)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4236)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4236)
                       ((_ to_fp 11 53) x1_ack!4235)))
       ((_ to_fp 11 53) x1_ack!4235)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4235)
                    ((_ to_fp 11 53) x0_ack!4239))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4236)
                    ((_ to_fp 11 53) x1_ack!4235))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4237) ((_ to_fp 11 53) b_ack!4238))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4237) ((_ to_fp 11 53) x0_ack!4239))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4238) ((_ to_fp 11 53) x2_ack!4236))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4237) ((_ to_fp 11 53) b_ack!4238))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4237) ((_ to_fp 11 53) x0_ack!4239))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4237) ((_ to_fp 11 53) x1_ack!4235))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4238) ((_ to_fp 11 53) x0_ack!4239))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4238) ((_ to_fp 11 53) x1_ack!4235))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4235)
                    ((_ to_fp 11 53) x0_ack!4239))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
