(declare-fun a_ack!23 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!23)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!23)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!23)
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) #x3f50624dd2f1a9fc)))
(assert (FPCHECK_FINVALID_SQRT
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!23)
          ((_ to_fp 11 53) #x3fd78b56362cef38))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!23)
          ((_ to_fp 11 53) #x3fd78b56362cef38))))

(check-sat)
(exit)
