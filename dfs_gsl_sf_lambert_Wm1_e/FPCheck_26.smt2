(declare-fun a_ack!41 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!41) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!41) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!41)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) a_ack!41))
       ((_ to_fp 11 53) #x3fd78b56362cef38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!41)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) a_ack!41)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!41)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!41) ((_ to_fp 11 53) #xbeb0c6f7a0b5ed8d))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!41))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!41)))
                   (CF_log a!1)))
      (a!3 (fp.div roundNearestTiesToEven
                   (CF_log a!1)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!41))))))
  (FPCHECK_FADD_OVERFLOW a!2 a!3))))

(check-sat)
(exit)
