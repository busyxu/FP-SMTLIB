(declare-fun c_ack!99 () (_ BitVec 64))
(declare-fun a_ack!100 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (fp.lt ((_ to_fp 11 53) c_ack!99) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    ((_ to_fp 11 53) c_ack!99))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!100) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (CF_pow (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbff0000000000000)
                  ((_ to_fp 11 53) c_ack!99))
          a_ack!100)
  #x3ff0000000000000))

(check-sat)
(exit)
