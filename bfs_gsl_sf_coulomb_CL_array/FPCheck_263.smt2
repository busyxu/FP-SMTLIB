(declare-fun a_ack!937 () (_ BitVec 64))
(declare-fun c_ack!936 () (_ BitVec 64))
(declare-fun b_ack!935 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!937) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!937))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!936))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!936))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!936))
       ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (bvsle #x00000001 b_ack!935))
(assert (bvsle #x00000002 b_ack!935))
(assert (bvsle #x00000003 b_ack!935))
(assert (bvsle #x00000004 b_ack!935))
(assert (bvsle #x00000005 b_ack!935))
(assert (bvsle #x00000006 b_ack!935))
(assert (bvsle #x00000007 b_ack!935))
(assert (bvsle #x00000008 b_ack!935))
(assert (bvsle #x00000009 b_ack!935))
(assert (bvsle #x0000000a b_ack!935))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!937)
                  ((_ to_fp 11 53) #x4024000000000000)))
  #x3ff0000000000000))

(check-sat)
(exit)
