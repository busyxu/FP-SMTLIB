(declare-fun d_ack!357 () (_ BitVec 64))
(declare-fun a_ack!359 () (_ BitVec 64))
(declare-fun b_ack!356 () (_ BitVec 32))
(declare-fun c_ack!358 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!357) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!359) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!357) ((_ to_fp 11 53) #x0024000000000001)))
(assert (bvsle #x00000000 b_ack!356))
(assert (not (bvsle #x00000001 b_ack!356)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!359) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!358))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!358))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!358))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!358))
            ((_ to_fp 11 53) #xbf60624dd2f1a9fc))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!358))
       ((_ to_fp 11 53) #x3f60624dd2f1a9fc)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc999999999999a)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x401921fb54442d18)
                  ((_ to_fp 11 53) c_ack!358)))))

(check-sat)
(exit)
