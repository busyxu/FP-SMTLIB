(declare-fun x1_ack!549 () (_ BitVec 64))
(declare-fun x0_ack!553 () (_ BitVec 64))
(declare-fun x2_ack!550 () (_ BitVec 64))
(declare-fun b_ack!552 () (_ BitVec 64))
(declare-fun a_ack!551 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!553) ((_ to_fp 11 53) x1_ack!549)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!549) ((_ to_fp 11 53) x2_ack!550)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!549)
                       ((_ to_fp 11 53) x0_ack!553))
               ((_ to_fp 11 53) x0_ack!553))
       ((_ to_fp 11 53) x1_ack!549)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!549)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!549)
                       ((_ to_fp 11 53) x0_ack!553)))
       ((_ to_fp 11 53) x0_ack!553)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!550)
                       ((_ to_fp 11 53) x1_ack!549))
               ((_ to_fp 11 53) x1_ack!549))
       ((_ to_fp 11 53) x2_ack!550)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!550)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!550)
                       ((_ to_fp 11 53) x1_ack!549)))
       ((_ to_fp 11 53) x1_ack!549)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!549)
                    ((_ to_fp 11 53) x0_ack!553))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!550)
                    ((_ to_fp 11 53) x1_ack!549))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) b_ack!552))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) x0_ack!553))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!552) ((_ to_fp 11 53) x2_ack!550))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) b_ack!552))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) x0_ack!553))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) x1_ack!549))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!552) ((_ to_fp 11 53) x0_ack!553))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!552) ((_ to_fp 11 53) x1_ack!549))))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!549 x0_ack!553))

(check-sat)
(exit)
