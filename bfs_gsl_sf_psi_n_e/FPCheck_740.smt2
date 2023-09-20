(declare-fun a_ack!2014 () (_ BitVec 32))
(declare-fun b_ack!2013 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (= #x00000000 a_ack!2014)))
(assert (= #x00000001 a_ack!2014))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2013) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2013) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2013) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2013) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2013) ((_ to_fp 11 53) #xc014000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (CF_sin (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x400921fb54442d18)
                  ((_ to_fp 11 53) b_ack!2013)))
  (CF_sin (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x400921fb54442d18)
                  ((_ to_fp 11 53) b_ack!2013)))))

(check-sat)
(exit)
