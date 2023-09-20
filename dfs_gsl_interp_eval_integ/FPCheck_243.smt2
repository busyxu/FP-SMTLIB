(declare-fun x1_ack!2833 () (_ BitVec 64))
(declare-fun x0_ack!2837 () (_ BitVec 64))
(declare-fun x2_ack!2834 () (_ BitVec 64))
(declare-fun b_ack!2836 () (_ BitVec 64))
(declare-fun a_ack!2835 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2837) ((_ to_fp 11 53) x1_ack!2833)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2833) ((_ to_fp 11 53) x2_ack!2834)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2833)
                       ((_ to_fp 11 53) x0_ack!2837))
               ((_ to_fp 11 53) x0_ack!2837))
       ((_ to_fp 11 53) x1_ack!2833)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2833)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2833)
                       ((_ to_fp 11 53) x0_ack!2837)))
       ((_ to_fp 11 53) x0_ack!2837)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2834)
                       ((_ to_fp 11 53) x1_ack!2833))
               ((_ to_fp 11 53) x1_ack!2833))
       ((_ to_fp 11 53) x2_ack!2834)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2834)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2834)
                       ((_ to_fp 11 53) x1_ack!2833)))
       ((_ to_fp 11 53) x1_ack!2833)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2833)
                    ((_ to_fp 11 53) x0_ack!2837))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2834)
                    ((_ to_fp 11 53) x1_ack!2833))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2835) ((_ to_fp 11 53) b_ack!2836))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2835) ((_ to_fp 11 53) x0_ack!2837))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2836) ((_ to_fp 11 53) x2_ack!2834))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2835) ((_ to_fp 11 53) b_ack!2836))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2835) ((_ to_fp 11 53) x0_ack!2837))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2835) ((_ to_fp 11 53) x1_ack!2833))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2836) ((_ to_fp 11 53) x0_ack!2837))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2836) ((_ to_fp 11 53) x1_ack!2833)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2833) ((_ to_fp 11 53) b_ack!2836))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2833)
                    ((_ to_fp 11 53) x0_ack!2837))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2834)
                    ((_ to_fp 11 53) x1_ack!2833))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!2836 x1_ack!2833))

(check-sat)
(exit)
