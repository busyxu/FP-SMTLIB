(declare-fun x1_ack!393 () (_ BitVec 64))
(declare-fun x0_ack!398 () (_ BitVec 64))
(declare-fun x2_ack!394 () (_ BitVec 64))
(declare-fun xx_ack!397 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!395 () (_ BitVec 64))
(declare-fun y1_ack!396 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!398) ((_ to_fp 11 53) x1_ack!393)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!393) ((_ to_fp 11 53) x2_ack!394)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!393)
                       ((_ to_fp 11 53) x0_ack!398))
               ((_ to_fp 11 53) x0_ack!398))
       ((_ to_fp 11 53) x1_ack!393)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!393)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!393)
                       ((_ to_fp 11 53) x0_ack!398)))
       ((_ to_fp 11 53) x0_ack!398)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!394)
                       ((_ to_fp 11 53) x1_ack!393))
               ((_ to_fp 11 53) x1_ack!393))
       ((_ to_fp 11 53) x2_ack!394)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!394)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!394)
                       ((_ to_fp 11 53) x1_ack!393)))
       ((_ to_fp 11 53) x1_ack!393)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!393)
                    ((_ to_fp 11 53) x0_ack!398))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!394)
                    ((_ to_fp 11 53) x1_ack!393))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!397) ((_ to_fp 11 53) x0_ack!398))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!397) ((_ to_fp 11 53) x2_ack!394))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!397) ((_ to_fp 11 53) x0_ack!398))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!397) ((_ to_fp 11 53) x1_ack!393))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!393)
               ((_ to_fp 11 53) x0_ack!398))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW y1_ack!396 y0_ack!395))

(check-sat)
(exit)
