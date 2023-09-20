(declare-fun x_ack!104 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) x_ack!104)
                        ((_ to_fp 11 53) #x3fe0000000000000)))
        ((_ to_fp 11 53) #x3fdb333333333333)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!104)
          ((_ to_fp 11 53) #x3fe0000000000000))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!104)
          ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
