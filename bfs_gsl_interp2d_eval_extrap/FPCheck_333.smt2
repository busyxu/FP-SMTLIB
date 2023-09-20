(declare-fun x1_ack!3522 () (_ BitVec 64))
(declare-fun x0_ack!3526 () (_ BitVec 64))
(declare-fun y0_ack!3523 () (_ BitVec 64))
(declare-fun x_ack!3524 () (_ BitVec 64))
(declare-fun y_ack!3525 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3526) ((_ to_fp 11 53) x1_ack!3522))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3523) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3524) ((_ to_fp 11 53) x0_ack!3526))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3524) ((_ to_fp 11 53) x1_ack!3522))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3525) ((_ to_fp 11 53) y0_ack!3523))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3525) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3522)
                       ((_ to_fp 11 53) x0_ack!3526))
               ((_ to_fp 11 53) x0_ack!3526))
       ((_ to_fp 11 53) x1_ack!3522)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3522)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3522)
                       ((_ to_fp 11 53) x0_ack!3526)))
       ((_ to_fp 11 53) x0_ack!3526)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3523))
               ((_ to_fp 11 53) y0_ack!3523))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3523)))
       ((_ to_fp 11 53) y0_ack!3523)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3525)
                       ((_ to_fp 11 53) y0_ack!3523))
               ((_ to_fp 11 53) y0_ack!3523))
       ((_ to_fp 11 53) y_ack!3525)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3525)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3525)
                       ((_ to_fp 11 53) y0_ack!3523)))
       ((_ to_fp 11 53) y0_ack!3523)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3524)
                  ((_ to_fp 11 53) x0_ack!3526))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3522)
                  ((_ to_fp 11 53) x0_ack!3526)))))

(check-sat)
(exit)
