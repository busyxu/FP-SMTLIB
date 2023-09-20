(declare-fun a_ack!1303 () (_ BitVec 64))
(declare-fun c_ack!1302 () (_ BitVec 64))
(declare-fun b_ack!1301 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1303) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1303))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1302))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!1302))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!1302))
       ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (bvsle #x00000001 b_ack!1301))
(assert (bvsle #x00000002 b_ack!1301))
(assert (bvsle #x00000003 b_ack!1301))
(assert (bvsle #x00000004 b_ack!1301))
(assert (bvsle #x00000005 b_ack!1301))
(assert (bvsle #x00000006 b_ack!1301))
(assert (bvsle #x00000007 b_ack!1301))
(assert (bvsle #x00000008 b_ack!1301))
(assert (bvsle #x00000009 b_ack!1301))
(assert (bvsle #x0000000a b_ack!1301))
(assert (bvsle #x0000000b b_ack!1301))
(assert (bvsle #x0000000c b_ack!1301))
(assert (bvsle #x0000000d b_ack!1301))
(assert (bvsle #x0000000e b_ack!1301))
(assert (bvsle #x0000000f b_ack!1301))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1303)
                                   ((_ to_fp 11 53) #x402e000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!1303)
            ((_ to_fp 11 53) #x402e000000000000))
    a!1)))

(check-sat)
(exit)
