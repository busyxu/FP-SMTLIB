(declare-fun a_ack!40 () (_ BitVec 64))
(declare-fun x_ack!41 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_atan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!41)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!40)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!41)
                    ((_ to_fp 11 53) a_ack!40))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (CF_atan (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!41)
                                    ((_ to_fp 11 53) a_ack!40))))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x400921fb54442d18)))

(check-sat)
(exit)
