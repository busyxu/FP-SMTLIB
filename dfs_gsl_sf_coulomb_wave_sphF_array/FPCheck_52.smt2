(declare-fun d_ack!398 () (_ BitVec 64))
(declare-fun a_ack!400 () (_ BitVec 64))
(declare-fun b_ack!397 () (_ BitVec 32))
(declare-fun c_ack!399 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!398) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!398) ((_ to_fp 11 53) #x0024000000000001)))
(assert (not (bvsle #x00000000 b_ack!397)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!399))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!399))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!399))
       ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x401921fb54442d18)
          ((_ to_fp 11 53) c_ack!399))
  #xbff0000000000000))

(check-sat)
(exit)
