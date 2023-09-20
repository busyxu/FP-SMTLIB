(declare-fun x1_ack!6241 () (_ BitVec 64))
(declare-fun x0_ack!6245 () (_ BitVec 64))
(declare-fun x2_ack!6242 () (_ BitVec 64))
(declare-fun b_ack!6244 () (_ BitVec 64))
(declare-fun a_ack!6243 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6245) ((_ to_fp 11 53) x1_ack!6241)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6241) ((_ to_fp 11 53) x2_ack!6242)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6241)
                       ((_ to_fp 11 53) x0_ack!6245))
               ((_ to_fp 11 53) x0_ack!6245))
       ((_ to_fp 11 53) x1_ack!6241)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6241)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6241)
                       ((_ to_fp 11 53) x0_ack!6245)))
       ((_ to_fp 11 53) x0_ack!6245)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6242)
                       ((_ to_fp 11 53) x1_ack!6241))
               ((_ to_fp 11 53) x1_ack!6241))
       ((_ to_fp 11 53) x2_ack!6242)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6242)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6242)
                       ((_ to_fp 11 53) x1_ack!6241)))
       ((_ to_fp 11 53) x1_ack!6241)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6241)
                    ((_ to_fp 11 53) x0_ack!6245))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6242)
                    ((_ to_fp 11 53) x1_ack!6241))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6243) ((_ to_fp 11 53) b_ack!6244))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6243) ((_ to_fp 11 53) x0_ack!6245))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6244) ((_ to_fp 11 53) x2_ack!6242))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6243) ((_ to_fp 11 53) b_ack!6244))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6243) ((_ to_fp 11 53) x0_ack!6245))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6243) ((_ to_fp 11 53) x1_ack!6241)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6241) ((_ to_fp 11 53) a_ack!6243))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6244) ((_ to_fp 11 53) x1_ack!6241))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6244) ((_ to_fp 11 53) x2_ack!6242))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6242)
                    ((_ to_fp 11 53) x1_ack!6241))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!6242)
          ((_ to_fp 11 53) x1_ack!6241))))

(check-sat)
(exit)
