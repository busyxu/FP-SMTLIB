(declare-fun x1_ack!92 () (_ BitVec 64))
(declare-fun x0_ack!96 () (_ BitVec 64))
(declare-fun y0_ack!93 () (_ BitVec 64))
(declare-fun x_ack!94 () (_ BitVec 64))
(declare-fun y_ack!95 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!96) ((_ to_fp 11 53) x1_ack!92))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!93) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!94) ((_ to_fp 11 53) x0_ack!96))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!94) ((_ to_fp 11 53) x1_ack!92))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!95) ((_ to_fp 11 53) y0_ack!93))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!95) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!94) ((_ to_fp 11 53) x0_ack!96))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!94) ((_ to_fp 11 53) x1_ack!92))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!95) ((_ to_fp 11 53) y0_ack!93))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!95) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!92)
                       ((_ to_fp 11 53) x0_ack!96))
               ((_ to_fp 11 53) x0_ack!96))
       ((_ to_fp 11 53) x1_ack!92)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!92)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!92)
                       ((_ to_fp 11 53) x0_ack!96)))
       ((_ to_fp 11 53) x0_ack!96)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!93))
               ((_ to_fp 11 53) y0_ack!93))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!93)))
       ((_ to_fp 11 53) y0_ack!93)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!93))))

(check-sat)
(exit)
