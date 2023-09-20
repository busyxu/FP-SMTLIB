(declare-fun a_ack!706 () (_ BitVec 64))
(declare-fun c_ack!705 () (_ BitVec 64))
(declare-fun b_ack!704 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!706) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!706))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!705))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!705))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!705))
       ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (bvsle #x00000001 b_ack!704))
(assert (bvsle #x00000002 b_ack!704))
(assert (bvsle #x00000003 b_ack!704))
(assert (bvsle #x00000004 b_ack!704))
(assert (bvsle #x00000005 b_ack!704))
(assert (bvsle #x00000006 b_ack!704))
(assert (bvsle #x00000007 b_ack!704))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!706)
          ((_ to_fp 11 53) #x401c000000000000))))

(check-sat)
(exit)
