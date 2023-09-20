(declare-fun x1_ack!499 () (_ BitVec 64))
(declare-fun x0_ack!503 () (_ BitVec 64))
(declare-fun y0_ack!500 () (_ BitVec 64))
(declare-fun x_ack!501 () (_ BitVec 64))
(declare-fun y_ack!502 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!503) ((_ to_fp 11 53) x1_ack!499))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!500) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!501) ((_ to_fp 11 53) x0_ack!503))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!501) ((_ to_fp 11 53) x1_ack!499))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!502) ((_ to_fp 11 53) y0_ack!500))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!502) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!499)
                       ((_ to_fp 11 53) x0_ack!503))
               ((_ to_fp 11 53) x0_ack!503))
       ((_ to_fp 11 53) x1_ack!499)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!499)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!499)
                       ((_ to_fp 11 53) x0_ack!503)))
       ((_ to_fp 11 53) x0_ack!503)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!500))
               ((_ to_fp 11 53) y0_ack!500))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!500)))
       ((_ to_fp 11 53) y0_ack!500)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!502)
                       ((_ to_fp 11 53) y0_ack!500))
               ((_ to_fp 11 53) y0_ack!500))
       ((_ to_fp 11 53) y_ack!502)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!502)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!502)
                       ((_ to_fp 11 53) y0_ack!500)))
       ((_ to_fp 11 53) y0_ack!500)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!501)
                  ((_ to_fp 11 53) x0_ack!503))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!499)
                  ((_ to_fp 11 53) x0_ack!503)))))

(check-sat)
(exit)
