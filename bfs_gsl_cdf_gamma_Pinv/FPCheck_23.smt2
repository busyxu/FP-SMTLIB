(declare-fun x_ack!70 () (_ BitVec 64))
(declare-fun a_ack!69 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!70) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!70) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!70) ((_ to_fp 11 53) #x3fa999999999999a)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!69)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!69)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #xbff007228b4cd147))
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!69)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3ffbc8a35d2b114e))))

(check-sat)
(exit)
