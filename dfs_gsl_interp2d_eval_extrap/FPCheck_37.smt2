(declare-fun x1_ack!363 () (_ BitVec 64))
(declare-fun x0_ack!367 () (_ BitVec 64))
(declare-fun y0_ack!364 () (_ BitVec 64))
(declare-fun x_ack!365 () (_ BitVec 64))
(declare-fun y_ack!366 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!367) ((_ to_fp 11 53) x1_ack!363))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!364) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!365) ((_ to_fp 11 53) x0_ack!367))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!365) ((_ to_fp 11 53) x1_ack!363))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!366) ((_ to_fp 11 53) y0_ack!364))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!366) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!363)
                       ((_ to_fp 11 53) x0_ack!367))
               ((_ to_fp 11 53) x0_ack!367))
       ((_ to_fp 11 53) x1_ack!363)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!363)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!363)
                       ((_ to_fp 11 53) x0_ack!367)))
       ((_ to_fp 11 53) x0_ack!367)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!364))
               ((_ to_fp 11 53) y0_ack!364))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!364)))
       ((_ to_fp 11 53) y0_ack!364)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!366)
                       ((_ to_fp 11 53) y0_ack!364))
               ((_ to_fp 11 53) y0_ack!364))
       ((_ to_fp 11 53) y_ack!366)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!366)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!366)
                       ((_ to_fp 11 53) y0_ack!364)))
       ((_ to_fp 11 53) y0_ack!364)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!366)
                                   ((_ to_fp 11 53) y0_ack!364))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!364))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!365)
                    ((_ to_fp 11 53) x0_ack!367))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!363)
                    ((_ to_fp 11 53) x0_ack!367)))
    a!1)))

(check-sat)
(exit)
