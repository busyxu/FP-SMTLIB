(declare-fun x1_ack!452 () (_ BitVec 64))
(declare-fun x0_ack!456 () (_ BitVec 64))
(declare-fun y0_ack!453 () (_ BitVec 64))
(declare-fun x_ack!454 () (_ BitVec 64))
(declare-fun y_ack!455 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!456) ((_ to_fp 11 53) x1_ack!452))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!453) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!454) ((_ to_fp 11 53) x0_ack!456))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!454) ((_ to_fp 11 53) x1_ack!452))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!455) ((_ to_fp 11 53) y0_ack!453))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!455) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!454) ((_ to_fp 11 53) x0_ack!456))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!454) ((_ to_fp 11 53) x1_ack!452))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!455) ((_ to_fp 11 53) y0_ack!453))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!455) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!452)
                       ((_ to_fp 11 53) x0_ack!456))
               ((_ to_fp 11 53) x0_ack!456))
       ((_ to_fp 11 53) x1_ack!452)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!452)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!452)
                       ((_ to_fp 11 53) x0_ack!456)))
       ((_ to_fp 11 53) x0_ack!456)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 y0_ack!453))

(check-sat)
(exit)
