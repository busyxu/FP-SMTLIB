(declare-fun x1_ack!418 () (_ BitVec 64))
(declare-fun x0_ack!424 () (_ BitVec 64))
(declare-fun x2_ack!419 () (_ BitVec 64))
(declare-fun b_ack!423 () (_ BitVec 64))
(declare-fun a_ack!422 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!420 () (_ BitVec 64))
(declare-fun y1_ack!421 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!424) ((_ to_fp 11 53) x1_ack!418)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!418) ((_ to_fp 11 53) x2_ack!419)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!418)
                       ((_ to_fp 11 53) x0_ack!424))
               ((_ to_fp 11 53) x0_ack!424))
       ((_ to_fp 11 53) x1_ack!418)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!418)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!418)
                       ((_ to_fp 11 53) x0_ack!424)))
       ((_ to_fp 11 53) x0_ack!424)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!419)
                       ((_ to_fp 11 53) x1_ack!418))
               ((_ to_fp 11 53) x1_ack!418))
       ((_ to_fp 11 53) x2_ack!419)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!419)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!419)
                       ((_ to_fp 11 53) x1_ack!418)))
       ((_ to_fp 11 53) x1_ack!418)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!418)
                    ((_ to_fp 11 53) x0_ack!424))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!419)
                    ((_ to_fp 11 53) x1_ack!418))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!422) ((_ to_fp 11 53) b_ack!423))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!422) ((_ to_fp 11 53) x0_ack!424))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!423) ((_ to_fp 11 53) x2_ack!419))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!422) ((_ to_fp 11 53) b_ack!423))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!422) ((_ to_fp 11 53) x0_ack!424))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!422) ((_ to_fp 11 53) x1_ack!418))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!423) ((_ to_fp 11 53) x0_ack!424)))
(assert (FPCHECK_FSUB_OVERFLOW y1_ack!421 y0_ack!420))

(check-sat)
(exit)
