(declare-fun x1_ack!4428 () (_ BitVec 64))
(declare-fun x0_ack!4434 () (_ BitVec 64))
(declare-fun x2_ack!4429 () (_ BitVec 64))
(declare-fun b_ack!4433 () (_ BitVec 64))
(declare-fun a_ack!4432 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!4430 () (_ BitVec 64))
(declare-fun y2_ack!4431 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4434) ((_ to_fp 11 53) x1_ack!4428)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4428) ((_ to_fp 11 53) x2_ack!4429)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4428)
                       ((_ to_fp 11 53) x0_ack!4434))
               ((_ to_fp 11 53) x0_ack!4434))
       ((_ to_fp 11 53) x1_ack!4428)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4428)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4428)
                       ((_ to_fp 11 53) x0_ack!4434)))
       ((_ to_fp 11 53) x0_ack!4434)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4429)
                       ((_ to_fp 11 53) x1_ack!4428))
               ((_ to_fp 11 53) x1_ack!4428))
       ((_ to_fp 11 53) x2_ack!4429)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4429)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4429)
                       ((_ to_fp 11 53) x1_ack!4428)))
       ((_ to_fp 11 53) x1_ack!4428)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4428)
                    ((_ to_fp 11 53) x0_ack!4434))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4429)
                    ((_ to_fp 11 53) x1_ack!4428))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4432) ((_ to_fp 11 53) b_ack!4433))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4432) ((_ to_fp 11 53) x0_ack!4434))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4433) ((_ to_fp 11 53) x2_ack!4429))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4432) ((_ to_fp 11 53) b_ack!4433))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4432) ((_ to_fp 11 53) x0_ack!4434))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4432) ((_ to_fp 11 53) x1_ack!4428)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4428) ((_ to_fp 11 53) a_ack!4432))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4433) ((_ to_fp 11 53) x1_ack!4428))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4433) ((_ to_fp 11 53) x2_ack!4429)))
(assert (FPCHECK_FSUB_OVERFLOW y2_ack!4431 y1_ack!4430))

(check-sat)
(exit)
