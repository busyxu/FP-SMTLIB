(declare-fun a_ack!32 () (_ BitVec 32))
(declare-fun b_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!32 #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!32 #x00000001)))
(assert (= #x00000000 a_ack!32))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) b_ack!31)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!31)))
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!31)))))

(check-sat)
(exit)
