(declare-fun c_ack!905 () (_ BitVec 64))
(declare-fun b_ack!904 () (_ BitVec 64))
(declare-fun a_ack!906 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!904))
       (fp.abs ((_ to_fp 11 53) c_ack!905))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!906))
       (fp.abs ((_ to_fp 11 53) b_ack!904))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!906))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!904))
          (fp.abs ((_ to_fp 11 53) a_ack!906)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!904))
          (fp.abs ((_ to_fp 11 53) a_ack!906)))))

(check-sat)
(exit)
