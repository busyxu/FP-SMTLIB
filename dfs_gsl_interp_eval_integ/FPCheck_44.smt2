(declare-fun x1_ack!388 () (_ BitVec 64))
(declare-fun x0_ack!392 () (_ BitVec 64))
(declare-fun x2_ack!389 () (_ BitVec 64))
(declare-fun b_ack!391 () (_ BitVec 64))
(declare-fun a_ack!390 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!392) ((_ to_fp 11 53) x1_ack!388)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!388) ((_ to_fp 11 53) x2_ack!389)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!388)
                       ((_ to_fp 11 53) x0_ack!392))
               ((_ to_fp 11 53) x0_ack!392))
       ((_ to_fp 11 53) x1_ack!388)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!388)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!388)
                       ((_ to_fp 11 53) x0_ack!392)))
       ((_ to_fp 11 53) x0_ack!392)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!389)
                       ((_ to_fp 11 53) x1_ack!388))
               ((_ to_fp 11 53) x1_ack!388))
       ((_ to_fp 11 53) x2_ack!389)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!389)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!389)
                       ((_ to_fp 11 53) x1_ack!388)))
       ((_ to_fp 11 53) x1_ack!388)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!388)
                    ((_ to_fp 11 53) x0_ack!392))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!389)
                    ((_ to_fp 11 53) x1_ack!388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!390) ((_ to_fp 11 53) b_ack!391))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!390) ((_ to_fp 11 53) x0_ack!392))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!391) ((_ to_fp 11 53) x2_ack!389))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!390) ((_ to_fp 11 53) b_ack!391))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!390) ((_ to_fp 11 53) x0_ack!392))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!390) ((_ to_fp 11 53) x1_ack!388))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!391) ((_ to_fp 11 53) x0_ack!392)))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!388 x0_ack!392))

(check-sat)
(exit)
