(declare-fun d_ack!158 () (_ BitVec 64))
(declare-fun a_ack!160 () (_ BitVec 64))
(declare-fun b_ack!157 () (_ BitVec 32))
(declare-fun c_ack!159 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!160) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!158) ((_ to_fp 11 53) #x0024000000000001)))
(assert (not (bvsle #x00000000 b_ack!157)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!160) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #xbf60624dd2f1a9fc))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #x3f60624dd2f1a9fc))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!159))
       ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401921fb54442d18)
                                   ((_ to_fp 11 53) c_ack!159)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FINVALID_SQRT
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!159))
            a!1)
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!159))
            a!1))))

(check-sat)
(exit)
