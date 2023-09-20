(declare-fun x1_ack!6496 () (_ BitVec 64))
(declare-fun x0_ack!6500 () (_ BitVec 64))
(declare-fun x2_ack!6497 () (_ BitVec 64))
(declare-fun b_ack!6499 () (_ BitVec 64))
(declare-fun a_ack!6498 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6500) ((_ to_fp 11 53) x1_ack!6496)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6496) ((_ to_fp 11 53) x2_ack!6497)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6496)
                       ((_ to_fp 11 53) x0_ack!6500))
               ((_ to_fp 11 53) x0_ack!6500))
       ((_ to_fp 11 53) x1_ack!6496)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6496)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6496)
                       ((_ to_fp 11 53) x0_ack!6500)))
       ((_ to_fp 11 53) x0_ack!6500)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6497)
                       ((_ to_fp 11 53) x1_ack!6496))
               ((_ to_fp 11 53) x1_ack!6496))
       ((_ to_fp 11 53) x2_ack!6497)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6497)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6497)
                       ((_ to_fp 11 53) x1_ack!6496)))
       ((_ to_fp 11 53) x1_ack!6496)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6496)
                    ((_ to_fp 11 53) x0_ack!6500))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6497)
                    ((_ to_fp 11 53) x1_ack!6496))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6498) ((_ to_fp 11 53) b_ack!6499))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6498) ((_ to_fp 11 53) x0_ack!6500))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6499) ((_ to_fp 11 53) x2_ack!6497))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6498) ((_ to_fp 11 53) b_ack!6499))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6498) ((_ to_fp 11 53) x0_ack!6500))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6498) ((_ to_fp 11 53) x1_ack!6496))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6499) ((_ to_fp 11 53) x0_ack!6500))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6499) ((_ to_fp 11 53) x1_ack!6496)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6496) ((_ to_fp 11 53) b_ack!6499))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6496)
                    ((_ to_fp 11 53) x0_ack!6500))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW x2_ack!6497 x1_ack!6496))

(check-sat)
(exit)
