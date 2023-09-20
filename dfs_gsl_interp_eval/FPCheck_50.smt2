(declare-fun x1_ack!429 () (_ BitVec 64))
(declare-fun x0_ack!434 () (_ BitVec 64))
(declare-fun x2_ack!430 () (_ BitVec 64))
(declare-fun xx_ack!433 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!431 () (_ BitVec 64))
(declare-fun y2_ack!432 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!434) ((_ to_fp 11 53) x1_ack!429)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!429) ((_ to_fp 11 53) x2_ack!430)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!429)
                       ((_ to_fp 11 53) x0_ack!434))
               ((_ to_fp 11 53) x0_ack!434))
       ((_ to_fp 11 53) x1_ack!429)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!429)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!429)
                       ((_ to_fp 11 53) x0_ack!434)))
       ((_ to_fp 11 53) x0_ack!434)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!430)
                       ((_ to_fp 11 53) x1_ack!429))
               ((_ to_fp 11 53) x1_ack!429))
       ((_ to_fp 11 53) x2_ack!430)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!430)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!430)
                       ((_ to_fp 11 53) x1_ack!429)))
       ((_ to_fp 11 53) x1_ack!429)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!429)
                    ((_ to_fp 11 53) x0_ack!434))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!430)
                    ((_ to_fp 11 53) x1_ack!429))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!433) ((_ to_fp 11 53) x0_ack!434))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!433) ((_ to_fp 11 53) x2_ack!430))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!433) ((_ to_fp 11 53) x0_ack!434))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!433) ((_ to_fp 11 53) x1_ack!429)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!429) ((_ to_fp 11 53) xx_ack!433))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!430)
               ((_ to_fp 11 53) x1_ack!429))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW y2_ack!432 y1_ack!431))

(check-sat)
(exit)
