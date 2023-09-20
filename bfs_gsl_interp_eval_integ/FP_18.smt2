(declare-fun x1_ack!378 () (_ BitVec 64))
(declare-fun x0_ack!382 () (_ BitVec 64))
(declare-fun x2_ack!379 () (_ BitVec 64))
(declare-fun b_ack!381 () (_ BitVec 64))
(declare-fun a_ack!380 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!382) ((_ to_fp 11 53) x1_ack!378)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!378) ((_ to_fp 11 53) x2_ack!379)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!378)
                       ((_ to_fp 11 53) x0_ack!382))
               ((_ to_fp 11 53) x0_ack!382))
       ((_ to_fp 11 53) x1_ack!378)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!378)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!378)
                       ((_ to_fp 11 53) x0_ack!382)))
       ((_ to_fp 11 53) x0_ack!382)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!379)
                       ((_ to_fp 11 53) x1_ack!378))
               ((_ to_fp 11 53) x1_ack!378))
       ((_ to_fp 11 53) x2_ack!379)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!379)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!379)
                       ((_ to_fp 11 53) x1_ack!378)))
       ((_ to_fp 11 53) x1_ack!378)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!378)
                    ((_ to_fp 11 53) x0_ack!382))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!379)
                    ((_ to_fp 11 53) x1_ack!378))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!380) ((_ to_fp 11 53) b_ack!381))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!380) ((_ to_fp 11 53) x0_ack!382)))

(check-sat)
(exit)
