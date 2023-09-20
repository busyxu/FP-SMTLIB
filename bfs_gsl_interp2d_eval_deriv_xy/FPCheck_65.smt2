(declare-fun x1_ack!723 () (_ BitVec 64))
(declare-fun x0_ack!730 () (_ BitVec 64))
(declare-fun y0_ack!724 () (_ BitVec 64))
(declare-fun x_ack!728 () (_ BitVec 64))
(declare-fun y_ack!729 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z1_ack!726 () (_ BitVec 64))
(declare-fun z3_ack!727 () (_ BitVec 64))
(declare-fun z0_ack!725 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!730) ((_ to_fp 11 53) x1_ack!723))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!724) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!728) ((_ to_fp 11 53) x0_ack!730))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!728) ((_ to_fp 11 53) x1_ack!723))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!729) ((_ to_fp 11 53) y0_ack!724))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!729) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!728) ((_ to_fp 11 53) x0_ack!730))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!728) ((_ to_fp 11 53) x1_ack!723))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!729) ((_ to_fp 11 53) y0_ack!724))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!729) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!723)
                       ((_ to_fp 11 53) x0_ack!730))
               ((_ to_fp 11 53) x0_ack!730))
       ((_ to_fp 11 53) x1_ack!723)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!723)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!723)
                       ((_ to_fp 11 53) x0_ack!730)))
       ((_ to_fp 11 53) x0_ack!730)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!724))
               ((_ to_fp 11 53) y0_ack!724))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!724)))
       ((_ to_fp 11 53) y0_ack!724)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!725)
          ((_ to_fp 11 53) z3_ack!727))
  z1_ack!726))

(check-sat)
(exit)
