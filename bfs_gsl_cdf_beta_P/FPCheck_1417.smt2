(declare-fun x_ack!6290 () (_ BitVec 64))
(declare-fun nu1_ack!6288 () (_ BitVec 64))
(declare-fun nu2_ack!6289 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!6290) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!6290) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6290) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6290) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!6288) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!6289) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!6288) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!6289) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!6288) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!6289) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!6288) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!6289) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!6288) ((_ to_fp 11 53) nu2_ack!6289)))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!6288) ((_ to_fp 11 53) nu2_ack!6289))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!6289)
                    ((_ to_fp 11 53) nu1_ack!6288))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!6288)
                       ((_ to_fp 11 53) nu2_ack!6289))
               ((_ to_fp 11 53) nu1_ack!6288))
       ((_ to_fp 11 53) nu2_ack!6289)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!6288)
                       ((_ to_fp 11 53) nu2_ack!6289))
               ((_ to_fp 11 53) nu2_ack!6289))
       ((_ to_fp 11 53) nu1_ack!6288)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!6288)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) nu1_ack!6288)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff3e48f2c0326b5))

(check-sat)
(exit)
