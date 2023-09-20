(declare-fun a_ack!805 () (_ BitVec 64))
(declare-fun c_ack!804 () (_ BitVec 64))
(declare-fun b_ack!803 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!805) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!805))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!804))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!804))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!804))
       ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (bvsle #x00000001 b_ack!803))
(assert (bvsle #x00000002 b_ack!803))
(assert (bvsle #x00000003 b_ack!803))
(assert (bvsle #x00000004 b_ack!803))
(assert (bvsle #x00000005 b_ack!803))
(assert (bvsle #x00000006 b_ack!803))
(assert (bvsle #x00000007 b_ack!803))
(assert (bvsle #x00000008 b_ack!803))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!805)
                                   ((_ to_fp 11 53) #x4020000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!805)
            ((_ to_fp 11 53) #x4020000000000000))
    a!1)))

(check-sat)
(exit)
