(declare-fun x1_ack!441 () (_ BitVec 64))
(declare-fun x0_ack!445 () (_ BitVec 64))
(declare-fun y0_ack!442 () (_ BitVec 64))
(declare-fun x_ack!443 () (_ BitVec 64))
(declare-fun y_ack!444 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!445) ((_ to_fp 11 53) x1_ack!441))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!442) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!443) ((_ to_fp 11 53) x0_ack!445))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!443) ((_ to_fp 11 53) x1_ack!441))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!444) ((_ to_fp 11 53) y0_ack!442))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!444) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!443) ((_ to_fp 11 53) x0_ack!445))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!443) ((_ to_fp 11 53) x1_ack!441))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!444) ((_ to_fp 11 53) y0_ack!442))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!444) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!441)
               ((_ to_fp 11 53) x0_ack!445))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
